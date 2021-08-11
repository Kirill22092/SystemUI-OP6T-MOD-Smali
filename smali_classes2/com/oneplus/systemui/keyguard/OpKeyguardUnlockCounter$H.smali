.class public Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$H;
.super Landroid/os/Handler;
.source "OpKeyguardUnlockCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$H;->this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$H;->this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->access$400(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$H;->this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    invoke-static {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->access$300(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V

    :goto_0
    return-void
.end method
