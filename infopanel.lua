quest infopanel begin
    state start begin
        when 53003.use begin
            say_title("Userpanel:")
            say("")
            say("Du kannst folgendes machen!")
            local pluslevel = pc.get_level()+1
            local todo = select("Teleporter", ""..pc.get_name().."", "Lager", "Teamliste", "Nichts")
            if todo == 5 then
                return
            elseif todo == 1 then
                say_title("Warpring:")
                say("")
                say("Willst du durch das Universum von Exodius reisen,")
                say("und durch die verschiedenen Länder reisen "..pc.get_name()..".")
                say("")
                say("")
                say_reward("Wie schauts aus?")
                local janein = select("Ja","Nein")
                if janein == 2 then
                    return
                elseif janein == 1 then
                    say_title("Teleportieren")
                    say("")
                    say("Wohin möchtest du?")
                    local orte = select("Map1","Map2","normale Maps","neue Maps","Dungeons","Events","Abbrechen")
                    if orte == 7 then
                        return
                    elseif orte == 1 then
                        local reiche = select("rotes Reich","gelbes Reich","blaues Reich","Abbrechen")
                        if reiche == 4 then
                            return
                        elseif reiche == 1 then
                            pc.warp(x, y)
                        elseif reiche == 2 then
                            pc.warp(x, y)
                        elseif reiche == 3 then
                            pc.warp(x, y)
                        end
                    elseif orte == 2 then
                        local reiche = select("rotes Reich","gelbes Reich","blaues Reich","Abbrechen")
                        if reiche == 4 then
                            return
                        elseif reiche == 1 then
                            pc.warp(x, y)
                        elseif reiche == 2 then
                            pc.warp(x, y)
                        elseif reiche == 3 then
                            pc.warp(x, y)
                        end
                    elseif orte == 3 then
                        local nm = select("Wüste","Orktal","Feuerland","Eisland","Weiter","Abbrechen")
                        if nm == 6 then
                            return
                        elseif nm == 1 then
                            pc.warp(x, y)
                        elseif nm == 2 then
                            pc.warp(x, y)
                        elseif nm == 3 then
                            pc.warp(x, y)
                        elseif nm == 4 then
                            pc.warp(x, y)
                        elseif nm == 5 then
                            local nm2 = select("Geisterwald(ab 75)", "roter Wald(ab 75)","Abbrechen")
                            if nm2 == 3 then
                                return
                            elseif nm2 == 1 then
                                if pc.get_level() >= 75 then
                                    pc.warp(x, y)
                                else
                                    say_title("Fehler")
                                    say("")
                                    say("Dein Level ist zu niedrig")
                                end
                            elseif nm2 == 2 then
                                if pc.get_level() >= 75 then
                                    pc.warp(x, y)
                                else
                                    say_title("Fehler")
                                    say("")
                                    say("Dein Level ist zu niedrig")
                                end
                            end
                        end
                    elseif orte == 4 then
                        local newm = select("palkische Gebirge(ab 95)","eisige Stadt(ab 95)","Naga-Tal(ab 95)","Abbrechen")
                        if newm == 4 then
                            return
                        elseif newm == 1 then
                            if pc.get_level() >= 95 then
                                pc.warp(x, y)
                            else
                                say_title("Fehler")
                                say("")
                                say("Dein Level ist zu niedrig")
                            end
                        elseif newm == 2 then
                            if pc.get_level() >= 95 then
                                pc.warp(x, y)
                            else
                                say_title("Fehler")
                                say("")
                                say("Dein Level ist zu niedrig")
                            end
                        elseif newm == 3 then
                            if pc.get_level() >= 95 then
                                pc.warp(x, y)
                            else
                                say_title("Fehler")
                                say("")
                                say("Dein Level ist zu niedrig")
                            end
                        end
                    elseif orte == 5 then
                        local dungeons = select("SpinnendungeonI","SpinnendungeonII(ab 65)","SpinnendungeonII Nr.2(ab 65)","SpinnendungeonIII(ab 75)","Dämonenturm(ab 50)","Weiter","Abbrechen")
                        if dungeons == 7 then
                            return
                        elseif dungeons == 1 then
                            pc.warp(x, y)
                        elseif dungeons == 2 then
                            if pc.get_level() >= 65 then
                                pc.warp(x, y)
                            else
                                say_title("Fehler")
                                say("")
                                say("Dein Level ist zu niedrig")
                            end
                        elseif dungeons == 3 then
                            if pc.get_level() >= 65 then
                                pc.warp(x, y)
                            else
                                say_title("Fehler")
                                say("")
                                say("Dein Level ist zu niedrig")
                            end
                        elseif dungeons == 4 then
                            if pc.get_level() >= 75 then
                                pc.warp(x, y)
                            else
                                say_title("Fehler")
                                say("")
                                say("Dein Level ist zu niedrig")
                            end
                        elseif dungeons == 5 then
                            if pc.get_level() >= 50 then
                                pc.warp(x, y)
                            else
                                say_title("Fehler")
                                say("")
                                say("Dein Level ist zu niedrig")
                            end
                        elseif dungeons == 6 then
                            local dungeons2 = select("Grotte der Heiligen(ab 75)","Abbrechen")
                            if dungeons2 == 2 then
                                return
                            elseif dungeons2 == 1 then
                                if pc.get_level() >= 75 then
                                    pc.warp(x, y)
                                else
                                    say_title("Fehler")
                                    say("")
                                    say("Dein Level ist zu niedrig")
                                end
                            end
                        end
                    elseif orte == 6 then
                        local events = select("OX-Wettbewerb","Abbrechen")
                        if events == 2 then
                            return
                        elseif events == 1 then
                            if game.get_event_flag("oxevent") == 1 then
                                pc.warp(x, y)
                            else
                                say_title("Fehler!")
                                say("")
                                say("Das Event ist nicht aktiv!")
                            end
                        end
                    end
                end
            elseif todo == 2 then
                say_title("Infos über dich:")
                local infos = select("Reich", "Yang", "Max. TP & MP", "Spielminuten", "Exp für Level "..pluslevel.."", "Abbrechen")
                if infos == 6 then
                    return
                elseif infos == 1 then
                    say_title("Dein Reich:")
                    say("")
                    if pc.get_empire() == 1 then
                        say_red("Du bist im roten Reich (Shinsoo-Reich).")
                    elseif pc.get_empire() == 2 then
                        say_yellow("Du bist im gelben Reich (Chunjo-Reich).")
                    elseif pc.get_empire() == 3 then
                        say_blue("Du bist im blauen Reich (Jinno-Reich).")
                    end
                    say("")
                    say("")
                    say_reward("Exodius the Only one!")
                elseif infos == 2 then
                    say_title("Dein Vermögen:")
                    say("")
                    say("Du bestitzt momentan: "..pc.get_gold().." Yang.")
                    say("")
                    say("")
                    say_reward("Exodius the Only one!")
                elseif infos == 3 then
                    say_title("Deine Max. TP & MP:")
                    say_red("Du besitzt : "..pc.get_hp().."TP (Trefferpunkte)")
                    say_blue2("Du besitzt : "..pc.get_sp().."MP (Magiepunkte)")
                    say("")
                    say("")
                    say_reward("Exodius the Only one!")
                elseif infos == 4 then
                    say_title("Deine Spielminuten")
                    say("")
                    say("Du spielst auf Exodius schon : "..pc.get_playtime().."Minuten!")
                elseif infos == 5 then
                    say_title("Exp für level "..pluslevel.."")
                    say("")
                    say("Du brauchst "..pc.get_next_exp().." EXP um Level "..pluslevel.." zu erreichen!")
                    say("")
                    say("")
                    say_reward("Exodius the Only one!")
                end
            elseif todo == 3 then
                chat("Wird noch bearbeitet!")
            elseif todo == 4 then
                chat("Wird noch bearbeitet!")
            end
        end
    end
end