document.querySelector('input[name="kintai_url"]').value  = localStorage.getItem 'kintai_url'
document.querySelector('input[name="login_url"]').value   = localStorage.getItem 'login_url'
document.querySelector('input[name="up_at"]').value       = localStorage.getItem 'up_at'
document.querySelector('input[name="down_at"]').value     = localStorage.getItem 'down_at'

button = document.querySelector('.save')

document.querySelector('.setting').onsubmit = ->
  kintai_url = document.querySelector('input[name="kintai_url"]').value
  login_url  = document.querySelector('input[name="login_url"]').value
  up_at      = document.querySelector('input[name="up_at"]').value
  down_at    = document.querySelector('input[name="down_at"]').value

  unless kintai_url && login_url && up_at && down_at
    return false

  localStorage.setItem 'kintai_url' , kintai_url
  localStorage.setItem 'login_url'  , login_url
  localStorage.setItem 'up_at'      , up_at
  localStorage.setItem 'down_at'    , down_at

  document.querySelector('.save').textContent = '保存しました'
  return false
