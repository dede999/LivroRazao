module MovesHelper
  def totale type, id, sent
    mov = Move.where(tipo: type, user_id: id, sentido: sent)
    tot = 0
    for m in mov do
      tot += m.value
    end
    return tot
  end
end
