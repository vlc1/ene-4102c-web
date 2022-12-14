### A Pluto.jl notebook ###
# v0.19.14

using Markdown
using InteractiveUtils

# ╔═╡ 182cd7f2-7b86-11ed-2151-3f68d4e7d8de
using SparseArrays

# ╔═╡ 6052e30d-6720-4921-a2f7-a0f4f04aea2c
using LinearAlgebra

# ╔═╡ 1a0b676d-3ea3-4653-b21e-cc25cbb4032b
derivative(n, ::Type{T}=Int) where {T} =
	Tridiagonal(-ones(T, n-1), 2ones(T, n), -ones(T, n-1))

# ╔═╡ 1d54a637-a13f-44c3-8e6e-5d1ed799eb89
function bc(n, ::Type{T}=Int) where {T}
	x = zeros(Int, n)
	x[end] = 1
	x
end

# ╔═╡ 915e8d10-8b0e-4664-99f0-f215a4ae2cba
n = (8, 8)

# ╔═╡ e2e1f928-9d74-4ee8-9d46-21e68b89a396
Δ = derivative.(n)

# ╔═╡ 26816d3a-6052-401e-990c-d2c7f0da6af9
A = kron(I(n[2]), Δ[1]) +  kron(Δ[2], I(n[1]))

# ╔═╡ 1a0cc224-7c1e-470a-92a9-06b86559a148
x = bc.(n)

# ╔═╡ 5b87bd18-bb9b-4a5c-8ecf-dfe84c1c526a
rhs = kron(ones(Int, n[2]), x[1]) +
      kron(x[2], ones(Int, n[1]))

# ╔═╡ dde80bea-139e-472c-a9d7-33043e893a12
@time A \ rhs

# ╔═╡ 5e2d2f00-96bf-4364-a79b-77dc0902cdfe
md"""

| Taille | Temps  |
|:------:|:------:|
| ``2 \times 2`` | ``7 \, \mu s`` |
| ``4 \times 4`` | ``13 \, \mu s`` |
| ``8 \times 8`` | ``62 \, \mu s`` |
| ``16 \times 16`` | ``1 \, ms`` |
| ``32 \times 32`` | ``28 \, ms`` |
| ``64 \times 64`` | ``1.07 \, s`` |
| ``128 \times 128`` | ``63 \, s`` |

"""

# ╔═╡ 6807e523-4b9b-4962-be62-de7b14b6ef79
128 * 128

# ╔═╡ 74c431db-e222-45ae-b14f-7d2cd3df5e4c
# Cubique
1.07 * 4 ^ 3

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.3"
manifest_format = "2.0"
project_hash = "6865b0a5e609d4d4358ebe0134f60aa2e67c548e"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"
"""

# ╔═╡ Cell order:
# ╠═182cd7f2-7b86-11ed-2151-3f68d4e7d8de
# ╠═6052e30d-6720-4921-a2f7-a0f4f04aea2c
# ╠═1a0b676d-3ea3-4653-b21e-cc25cbb4032b
# ╠═e2e1f928-9d74-4ee8-9d46-21e68b89a396
# ╠═26816d3a-6052-401e-990c-d2c7f0da6af9
# ╠═1d54a637-a13f-44c3-8e6e-5d1ed799eb89
# ╠═1a0cc224-7c1e-470a-92a9-06b86559a148
# ╠═5b87bd18-bb9b-4a5c-8ecf-dfe84c1c526a
# ╠═915e8d10-8b0e-4664-99f0-f215a4ae2cba
# ╠═dde80bea-139e-472c-a9d7-33043e893a12
# ╠═5e2d2f00-96bf-4364-a79b-77dc0902cdfe
# ╠═6807e523-4b9b-4962-be62-de7b14b6ef79
# ╠═74c431db-e222-45ae-b14f-7d2cd3df5e4c
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
