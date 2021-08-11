.class Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;
.super Ljava/lang/Object;
.source "KeyguardAssistantView.java"

# interfaces
.implements Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardAssistantView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyguardViewUpdateListener"
.end annotation


# instance fields
.field private mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardAssistantView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;-><init>()V

    return-void
.end method

.method private setKeyguardShowingHeader(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKeyguardShowingHeader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewUpdateListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardAssistantView;->access$200(Lcom/android/keyguard/KeyguardAssistantView;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBothCardAndChipShown(I)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBothCardAndChipShown:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardViewUpdateListener"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/KeyguardAssistantView;->access$300()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;->setKeyguardShowingHeader(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAssistantView;->access$400(Lcom/android/keyguard/KeyguardAssistantView;)V

    :goto_0
    return-void
.end method

.method public onCardShown(I)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCardShown:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardViewUpdateListener"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/KeyguardAssistantView;->access$300()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;->setKeyguardShowingHeader(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAssistantView;->access$400(Lcom/android/keyguard/KeyguardAssistantView;)V

    :goto_0
    return-void
.end method

.method public onChipShown(I)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChipShown:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardViewUpdateListener"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/KeyguardAssistantView;->access$300()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;->setKeyguardShowingHeader(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAssistantView;->access$400(Lcom/android/keyguard/KeyguardAssistantView;)V

    :goto_0
    return-void
.end method

.method public onNoCardAndChipShown(I)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNoCardAndChipShown:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardViewUpdateListener"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;->setKeyguardShowingHeader(Z)V

    return-void
.end method

.method public setKeyguardAssistantView(Lcom/android/keyguard/KeyguardAssistantView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    return-void
.end method
