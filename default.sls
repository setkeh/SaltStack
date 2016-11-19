restartminionsoitsyncpropperly:
  module.run:
    - name: service.restart
    - m_name: salt-minion
