.class public Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;
.source "GameTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;
    }
.end annotation


# instance fields
.field private mObserver:Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    new-instance p1, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;->mObserver:Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;)Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    return-object p0
.end method


# virtual methods
.method public dumpDetail(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isGameModeOn="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;->mObserver:Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;->isGameModeOn()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getCategories()[Ljava/lang/String;
    .locals 0

    const-string p0, "gaming"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentCategory()Ljava/lang/String;
    .locals 0

    const-string p0, "gaming"

    return-object p0
.end method

.method public getMdmLabel()Ljava/lang/String;
    .locals 0

    const-string p0, "game"

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public init()V
    .locals 3

    invoke-super {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->init()V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;->mObserver:Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public isActive()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;->mObserver:Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;->isGameModeOn()Z

    move-result p0

    return p0
.end method
