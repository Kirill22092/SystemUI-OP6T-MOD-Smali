.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$1$lAN9mjl0bP11onyNXKoQAiuwbo4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$1$lAN9mjl0bP11onyNXKoQAiuwbo4;->f$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$1$lAN9mjl0bP11onyNXKoQAiuwbo4;->f$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;

    check-cast p1, Lcom/android/systemui/dock/DockManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->lambda$onViewAttachedToWindow$0$LockscreenLockIconController$1(Lcom/android/systemui/dock/DockManager;)V

    return-void
.end method
