.class final enum Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;
.super Ljava/lang/Enum;
.source "OpWeatherSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/slice/OpWeatherSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WeatherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum CLOUDY:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum DOWNPOUR:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum DRIZZLE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum FLURRY:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum FOG:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum HAIL:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum HAZE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum HURRICANE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum NONE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum OVERCAST:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum RAIN:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum RAINSTORM:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum SANDSTORM:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum SHOWER:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum SLEET:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum SNOW:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum SNOWSTORM:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum SUNNY:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum SUNNY_INTERVALS:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

.field public static final enum THUNDERSHOWER:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;


# instance fields
.field iconId:I

.field weatherCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_sunny:I

    const-string v2, "SUNNY"

    const/4 v3, 0x0

    const/16 v4, 0x3e9

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SUNNY:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_sunny:I

    const-string v2, "SUNNY_INTERVALS"

    const/4 v4, 0x1

    const/16 v5, 0x3ea

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SUNNY_INTERVALS:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_cloudy:I

    const-string v2, "CLOUDY"

    const/4 v5, 0x2

    const/16 v6, 0x3eb

    invoke-direct {v0, v2, v5, v6, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->CLOUDY:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_overcast:I

    const-string v2, "OVERCAST"

    const/4 v6, 0x3

    const/16 v7, 0x3ec

    invoke-direct {v0, v2, v6, v7, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->OVERCAST:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_rain:I

    const-string v2, "DRIZZLE"

    const/4 v7, 0x4

    const/16 v8, 0x3ed

    invoke-direct {v0, v2, v7, v8, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->DRIZZLE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_rain:I

    const-string v2, "RAIN"

    const/4 v8, 0x5

    const/16 v9, 0x3ee

    invoke-direct {v0, v2, v8, v9, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->RAIN:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_rain:I

    const-string v2, "SHOWER"

    const/4 v9, 0x6

    const/16 v10, 0x3ef

    invoke-direct {v0, v2, v9, v10, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SHOWER:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_rain:I

    const-string v2, "DOWNPOUR"

    const/4 v10, 0x7

    const/16 v11, 0x3f0

    invoke-direct {v0, v2, v10, v11, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->DOWNPOUR:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_rain:I

    const-string v2, "RAINSTORM"

    const/16 v11, 0x8

    const/16 v12, 0x3f1

    invoke-direct {v0, v2, v11, v12, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->RAINSTORM:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_sleet:I

    const-string v2, "SLEET"

    const/16 v12, 0x9

    const/16 v13, 0x3f2

    invoke-direct {v0, v2, v12, v13, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SLEET:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_snow:I

    const-string v2, "FLURRY"

    const/16 v13, 0xa

    const/16 v14, 0x3f3

    invoke-direct {v0, v2, v13, v14, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->FLURRY:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_snow:I

    const-string v2, "SNOW"

    const/16 v14, 0xb

    const/16 v15, 0x3f4

    invoke-direct {v0, v2, v14, v15, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SNOW:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_snow:I

    const-string v2, "SNOWSTORM"

    const/16 v15, 0xc

    const/16 v14, 0x3f5

    invoke-direct {v0, v2, v15, v14, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SNOWSTORM:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_hail:I

    const-string v2, "HAIL"

    const/16 v14, 0xd

    const/16 v15, 0x3f6

    invoke-direct {v0, v2, v14, v15, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->HAIL:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_rain:I

    const-string v2, "THUNDERSHOWER"

    const/16 v15, 0xe

    const/16 v14, 0x3f7

    invoke-direct {v0, v2, v15, v14, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->THUNDERSHOWER:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_sandstorm:I

    const-string v2, "SANDSTORM"

    const/16 v14, 0xf

    const/16 v15, 0x3f8

    invoke-direct {v0, v2, v14, v15, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SANDSTORM:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_fog:I

    const-string v2, "FOG"

    const/16 v15, 0x10

    const/16 v14, 0x3f9

    invoke-direct {v0, v2, v15, v14, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->FOG:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_typhoon:I

    const-string v2, "HURRICANE"

    const/16 v14, 0x11

    const/16 v15, 0x3fa

    invoke-direct {v0, v2, v14, v15, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->HURRICANE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_weather_haze:I

    const-string v2, "HAZE"

    const/16 v15, 0x12

    const/16 v14, 0x3fb

    invoke-direct {v0, v2, v15, v14, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->HAZE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    const-string v1, "NONE"

    const/16 v2, 0x13

    const/16 v14, 0x270f

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->NONE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    const/16 v1, 0x14

    new-array v1, v1, [Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    sget-object v14, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SUNNY:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    aput-object v14, v1, v3

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SUNNY_INTERVALS:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    aput-object v3, v1, v4

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->CLOUDY:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    aput-object v3, v1, v5

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->OVERCAST:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    aput-object v3, v1, v6

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->DRIZZLE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    aput-object v3, v1, v7

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->RAIN:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    aput-object v3, v1, v8

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SHOWER:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    aput-object v3, v1, v9

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->DOWNPOUR:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    aput-object v3, v1, v10

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->RAINSTORM:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    aput-object v3, v1, v11

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SLEET:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    aput-object v3, v1, v12

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->FLURRY:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    aput-object v3, v1, v13

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SNOW:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    const/16 v4, 0xb

    aput-object v3, v1, v4

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SNOWSTORM:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    const/16 v4, 0xc

    aput-object v3, v1, v4

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->HAIL:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    const/16 v4, 0xd

    aput-object v3, v1, v4

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->THUNDERSHOWER:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    const/16 v4, 0xe

    aput-object v3, v1, v4

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->SANDSTORM:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    const/16 v4, 0xf

    aput-object v3, v1, v4

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->FOG:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    const/16 v4, 0x10

    aput-object v3, v1, v4

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->HURRICANE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    const/16 v4, 0x11

    aput-object v3, v1, v4

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->HAZE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    aput-object v3, v1, v15

    aput-object v0, v1, v2

    sput-object v1, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->$VALUES:[Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->weatherCode:I

    iput p4, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->iconId:I

    return-void
.end method

.method public static getWeather(I)Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;
    .locals 5

    invoke-static {}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->values()[Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->weatherCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->NONE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;
    .locals 1

    const-class v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->$VALUES:[Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    invoke-virtual {v0}, [Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->weatherCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
