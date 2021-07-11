.class Lcom/oneplus/keyguard/OpKeyguardClockInfoView$3;
.super Ljava/lang/Object;
.source "OpKeyguardClockInfoView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardAssistantView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpKeyguardClockInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$3;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardShownChanged(Z)V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive onCardShownChanged value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpKeyguardClockInfoView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$3;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$600(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    return-void
.end method
