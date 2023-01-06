import { Teydacore, TeydacoreConfig } from './mod.ts'

const config: TeydacoreConfig = {
    telegram: [{
        token: Deno.env.get("TELEGRAM_TOKEN"),
        connect: {
            wsr: [{
                url: Deno.env.get("ONEBOT_WSR_URL"),
                access_token: Deno.env.get("ONEBOT_WSR_ACCESS_TOKEN"),
                send_msgpack: false,
                reconnect_interval: 4
            }]
        }
    }]
}

const app = new Teydacore()

app.start(config)