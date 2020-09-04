.class public Lcom/oneplus/aod/slice/OpWeatherSlice;
.super Lcom/oneplus/aod/slice/OpSlice;
.source "OpWeatherSlice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;,
        Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;,
        Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;
    }
.end annotation


# static fields
.field private static final WEATHER_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mActiveStart:Ljava/time/LocalDateTime;

.field private mContext:Landroid/content/Context;

.field private mFirstQueryInfo:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mObserver:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;

.field private mPendingUpdate:Z

.field private mReady:Z

.field private mState:I

.field private mUserActiveTime:Ljava/time/LocalDateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.oneplus.weather.ContentProvider/data"

    .line 40
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice;->WEATHER_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V
    .locals 0

    .line 115
    invoke-direct {p0, p2}, Lcom/oneplus/aod/slice/OpSlice;-><init>(Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V

    const/4 p2, 0x0

    .line 48
    iput p2, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mState:I

    .line 49
    iput-boolean p2, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mReady:Z

    .line 50
    iput-boolean p2, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mFirstQueryInfo:Z

    .line 53
    iput-boolean p2, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mPendingUpdate:Z

    const/4 p2, 0x0

    .line 54
    iput-object p2, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 116
    iput-object p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mContext:Landroid/content/Context;

    .line 118
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/slice/OpWeatherSlice;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mState:I

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/aod/slice/OpWeatherSlice;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/aod/slice/OpWeatherSlice;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->queryWeatherInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/slice/OpWeatherSlice;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/aod/slice/OpWeatherSlice;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mReady:Z

    return p1
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .line 31
    sget-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice;->WEATHER_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/slice/OpWeatherSlice;Landroid/database/Cursor;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/aod/slice/OpWeatherSlice;->processWeatherInfo(Landroid/database/Cursor;)V

    return-void
.end method

.method private processWeatherInfo(Landroid/database/Cursor;)V
    .locals 9

    const-string v0, " "

    const-string v1, "\u02da"

    if-nez p1, :cond_0

    .line 269
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    const-string p1, "Query weather info fail: cursor is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 272
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    const-string v0, "Query weather info fail: cannot move to first"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    .line 277
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-static {}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->values()[Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 278
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    const-string v1, "Column count is not met the spec, need to check with OPWeather"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected columns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->values()[Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actual columns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    .line 285
    :cond_2
    :try_start_0
    sget-object v2, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->WEATHER_CODE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    invoke-static {v2}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->access$600(Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->WEATHER_NAME:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    invoke-static {v3}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->access$600(Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    sget-object v4, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->TEMP:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    invoke-static {v4}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->access$600(Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 288
    sget-object v5, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->TEMP_HIGH:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    invoke-static {v5}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->access$600(Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 289
    sget-object v6, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->TEMP_LOW:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    invoke-static {v6}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->access$600(Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 290
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "weatherCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " weatherName: "

    .line 291
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " temperature: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " temperatureHigh: "

    .line 292
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " temperatureLow: "

    .line 293
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v8, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->getWeather(I)Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;

    move-result-object v2

    .line 297
    iget v7, v2, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->weatherCode:I

    const/16 v8, 0x270f

    if-eq v7, v8, :cond_4

    .line 298
    iget v2, v2, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherType;->iconId:I

    iput v2, p0, Lcom/oneplus/aod/slice/OpSlice;->mIcon:I

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/slice/OpSlice;->mPrimary:Ljava/lang/String;

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mSecondary:Ljava/lang/String;

    .line 302
    sget-boolean v0, Lcom/oneplus/aod/slice/OpSlice;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processWeatherInfo: primary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSlice;->mPrimary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", secondary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSlice;->mSecondary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mReady:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 310
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected weather data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 308
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid cursor data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    :cond_4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 314
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->refreshActive()V

    return-void

    .line 312
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method private queryWeatherInfo()V
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/aod/slice/OpWeatherSlice$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/slice/OpWeatherSlice$1;-><init>(Lcom/oneplus/aod/slice/OpWeatherSlice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 264
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshActive()V
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSlice;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "sui_aod_weather_enabled"

    invoke-static {v1, v0}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/slice/OpSlice;->setActive(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/slice/OpSlice;->setActive(Z)V

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSlice;->updateUI()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 331
    invoke-super {p0, p1}, Lcom/oneplus/aod/slice/OpSlice;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "  mUserActiveTime="

    .line 332
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mUserActiveTime:Ljava/time/LocalDateTime;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mActiveStart="

    .line 334
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mActiveStart:Ljava/time/LocalDateTime;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p0, " now="

    .line 336
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSetEnabled(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mObserver:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;

    if-nez p1, :cond_0

    .line 125
    new-instance p1, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;-><init>(Lcom/oneplus/aod/slice/OpWeatherSlice;)V

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mObserver:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;

    .line 127
    :try_start_0
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/oneplus/aod/slice/OpWeatherSlice;->WEATHER_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mObserver:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 130
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register observer fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oneplus/aod/slice/OpWeatherSlice;->WEATHER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    iput-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mObserver:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;

    .line 134
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->queryWeatherInfo()V

    goto :goto_1

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mObserver:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;

    if-eqz p1, :cond_2

    .line 137
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mObserver:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    iput-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mObserver:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mFirstQueryInfo:Z

    .line 142
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->refreshActive()V

    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetListening listening="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mFirstQueryInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mFirstQueryInfo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->refreshState()V

    .line 152
    iget-boolean p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mFirstQueryInfo:Z

    if-nez p1, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->queryWeatherInfo()V

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mFirstQueryInfo:Z

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->onUserActive()V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleTimeChanged()V
    .locals 1

    .line 203
    invoke-super {p0}, Lcom/oneplus/aod/slice/OpSlice;->handleTimeChanged()V

    .line 204
    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mFirstQueryInfo:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mReady:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSlice;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 205
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->refreshState()V

    .line 207
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->queryWeatherInfo()V

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mFirstQueryInfo:Z

    .line 209
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    const-string v0, "query weather info"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onUserActive()V
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mUserActiveTime:Ljava/time/LocalDateTime;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mActiveStart:Ljava/time/LocalDateTime;

    if-eqz v0, :cond_0

    .line 319
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mActiveStart:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iput-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mUserActiveTime:Ljava/time/LocalDateTime;

    .line 322
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 323
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_name_initiative_pulse"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 324
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save user initiative pulse time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->refreshActive()V

    return-void
.end method

.method public refreshState()V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "pref_name_sleep_end"

    .line 164
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parse sleep end time fail: e"

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    invoke-static {v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v4, 0xf

    invoke-virtual {v0, v4, v5}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mActiveStart:Ljava/time/LocalDateTime;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 169
    iget-object v4, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_name_initiative_pulse"

    .line 173
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    iput-object v1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mUserActiveTime:Ljava/time/LocalDateTime;

    goto :goto_1

    .line 178
    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mUserActiveTime:Ljava/time/LocalDateTime;
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 180
    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->refreshActive()V

    .line 184
    sget-boolean v1, Lcom/oneplus/aod/slice/OpSlice;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time from sp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mActiveStart="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mActiveStart:Ljava/time/LocalDateTime;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mUserActiveTime="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice;->mUserActiveTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " now="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
