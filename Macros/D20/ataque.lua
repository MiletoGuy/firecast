-- Faz uma sequencia de ataques
local bonus = tonumber(arg[1]);
local qtd = tonumber(arg[2]);

if bonus==nil then
  bonus = tonumber(inputQuery("Bônus de Ataque."));
end;

if qtd == nil then
  qtd = tonumber(inputQuery("Quantidade de ataques. Cada ataque após o primeiro recebe -5. "));
end;

for i=1, qtd, 1 do
  local teste = "1d20+" .. bonus;
  bonus = bonus -5;
  rolar(teste, "Ataque " .. i);
end