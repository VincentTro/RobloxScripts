local function SendNotification(title,text,duration,...)
    game.StarterGui:SetCore("SendNotification", {
      Title = title;
      Text = text;
      Icon = "";
      Duration = duration;
    })
  end
  
    game.Players.ChildAdded:Connect(function(player)
    if not pcall (function()
    SendNotification("Player Joined",""..player.Name.."  Has joined the server",2.5 )
    end) then
      print ("Error")
    end
    end)
  
    game.Players.ChildRemoved:Connect(function(player)
    if not pcall (function()
    SendNotification("Player Left",""..player.Name.."  has left the server",2.5 )
    end) then
      print ("Error")
    end
    end)

  
  wait(1)
  print("Player Messenger  Loaded with no errors")
  game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "Player Messenger";
  Text = "Loaded with no errors";
  })