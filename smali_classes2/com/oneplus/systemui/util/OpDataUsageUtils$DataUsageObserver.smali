.class Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;
.super Landroid/database/ContentObserver;
.source "OpDataUsageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/util/OpDataUsageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataUsageObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/util/OpDataUsageUtils;


# direct methods
.method private constructor <init>(Lcom/oneplus/systemui/util/OpDataUsageUtils;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;->this$0:Lcom/oneplus/systemui/util/OpDataUsageUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/systemui/util/OpDataUsageUtils;Landroid/os/Handler;Lcom/oneplus/systemui/util/OpDataUsageUtils$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;-><init>(Lcom/oneplus/systemui/util/OpDataUsageUtils;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Usage update"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;->this$0:Lcom/oneplus/systemui/util/OpDataUsageUtils;

    invoke-static {p0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->access$200(Lcom/oneplus/systemui/util/OpDataUsageUtils;)V

    return-void
.end method

.method public startObserving()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;->this$0:Lcom/oneplus/systemui/util/OpDataUsageUtils;

    invoke-static {v0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->access$300(Lcom/oneplus/systemui/util/OpDataUsageUtils;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string v1, "content://com.oneplus.security.database.SafeProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startObserving. exception caught."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public stopObserving()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;->this$0:Lcom/oneplus/systemui/util/OpDataUsageUtils;

    invoke-static {v0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->access$300(Lcom/oneplus/systemui/util/OpDataUsageUtils;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopObserving. exception caught."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
