.class Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;
.super Landroid/database/ContentObserver;
.source "GameTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameObserver"
.end annotation


# instance fields
.field private mIsGameModeOn:Z

.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public isGameModeOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;->mIsGameModeOn:Z

    return p0
.end method

.method public onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;->access$000(Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->isGameModeOn(Landroid/content/Context;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;->mIsGameModeOn:Z

    if-eq v0, p1, :cond_1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;->access$100(Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameMode change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;->mIsGameModeOn:Z

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;->access$200(Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;)Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    move-result-object p1

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger$GameObserver;->mIsGameModeOn:Z

    const-string v0, "gaming"

    invoke-virtual {p1, v0, p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onTriggerChanged(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
