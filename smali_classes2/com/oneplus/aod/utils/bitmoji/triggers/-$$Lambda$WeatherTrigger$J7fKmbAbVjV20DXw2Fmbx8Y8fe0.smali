.class public final synthetic Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$J7fKmbAbVjV20DXw2Fmbx8Y8fe0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$J7fKmbAbVjV20DXw2Fmbx8Y8fe0;->f$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$J7fKmbAbVjV20DXw2Fmbx8Y8fe0;->f$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->lambda$queryWeatherInfoIfNeeded$0$WeatherTrigger()V

    return-void
.end method
