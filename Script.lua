loadstring(game:HttpGet("https://raw.githubusercontent.com/xidin861-star/All-one-script-tsb-fps-k/refs/heads/main/Script.lua"))()

task.wait(2)

-- 🔥 FORCE REMOVE ALL EFFECT + BOOST FPS

local Lighting = game:GetService("Lighting")

-- 🌇 เวลา + ปิดเงา
Lighting.ClockTime = 17.5
Lighting.GlobalShadows = false
Lighting.Brightness = 3
Lighting.FogEnd = 100000

-- 🧹 ลบเอฟเฟคทุกชนิด
for _,v in pairs(game:GetDescendants()) do
    
    if v:IsA("ParticleEmitter")
    or v:IsA("Trail")
    or v:IsA("Beam")
    or v:IsA("Explosion")
    or v:IsA("Fire")
    or v:IsA("Smoke")
    or v:IsA("Sparkles") then
        v:Destroy()
    end
    
    -- 🖼 ลบภาพ
    if v:IsA("Decal") or v:IsA("Texture") then
        v:Destroy()
    end
    
    -- 👕 ลบเสื้อผ้า
    if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") then
        v:Destroy()
    end
    
    -- 🌳 ลบต้นไม้ / ของตกแต่ง
    if v:IsA("BasePart") then
        local name = v.Name:lower()
        
        if name:find("tree") 
        or name:find("grass") 
        or name:find("bush") 
        or name:find("plant")
        or name:find("rock")
        or name:find("prop") then
            v:Destroy()
        else
            -- 🌍 ดินน้ำมัน
            v.Material = Enum.Material.SmoothPlastic
            v.Reflectance = 0
            v.CastShadow = false
        end
    end
end

-- 🔁 กันเอฟเฟคกลับมา
game.DescendantAdded:Connect(function(v)
    if v:IsA("ParticleEmitter")
    or v:IsA("Trail")
    or v:IsA("Beam")
    or v:IsA("Explosion")
    or v:IsA("Fire")
    or v:IsA("Smoke")
    or v:IsA("Sparkles") then
        v:Destroy()
    end
end)

-- 🔄 กันค่าโดนรีเซ็ต
task.spawn(function()
    while true do
        task.wait(3)
        Lighting.GlobalShadows = false
        Lighting.ClockTime = 17.5
    end
end)

print("🔥 FULL CLEAN FPS LOADED")
