.class Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeatherInfo"
.end annotation


# instance fields
.field private mTime:I

.field private mWeatherCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->mWeatherCode:I

    iput p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->mTime:I

    return-void
.end method

.method public static parse(Landroid/os/Bundle;)Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const-string v0, "hourly_weather_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "hourly_epochDateTime"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_0

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;

    invoke-direct {v1, v0, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;-><init>(II)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "epochTime is less than 0"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "type must not be empty"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static testCreate(I)Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;
    .locals 5

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;

    invoke-direct {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;-><init>()V

    iput p0, v0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->mTime:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double/2addr v1, v3

    double-to-int p0, v1

    invoke-direct {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->testSetWeatherCode(I)V

    return-object v0
.end method

.method private testSetWeatherCode(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x3f4

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->mWeatherCode:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x3ee

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->mWeatherCode:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x3eb

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->mWeatherCode:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x3e9

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->mWeatherCode:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getTime()I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->mTime:I

    return p0
.end method

.method public getWeatherCode()I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->mWeatherCode:I

    return p0
.end method

.method setWeatherCode(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->mWeatherCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->mTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nweatherCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->getWeatherCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->mTime:I

    sub-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz p1, :cond_0

    const/16 p0, 0xe10

    if-ge p1, p0, :cond_0

    const-string p0, "\ncurrent"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
