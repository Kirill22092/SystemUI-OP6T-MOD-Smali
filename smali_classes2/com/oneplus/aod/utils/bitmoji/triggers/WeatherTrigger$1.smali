.class Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$1;
.super Ljava/lang/Object;
.source "WeatherTrigger.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->lambda$queryWeatherInfoIfNeeded$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/ArrayList<",
        "Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$1;->call()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-static {v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$1500(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$1400()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "method_get_hourly_forecast_data"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "hourly_forecast"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :try_start_0
    invoke-static {v2}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->parse(Landroid/os/Bundle;)Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-static {v3}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$1600(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "weather data is invalid"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-object v0
.end method
