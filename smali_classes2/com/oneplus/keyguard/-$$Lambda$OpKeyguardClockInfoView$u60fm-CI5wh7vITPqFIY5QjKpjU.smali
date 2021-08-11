.class public final synthetic Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$u60fm-CI5wh7vITPqFIY5QjKpjU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$u60fm-CI5wh7vITPqFIY5QjKpjU;->f$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    iput-boolean p2, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$u60fm-CI5wh7vITPqFIY5QjKpjU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$u60fm-CI5wh7vITPqFIY5QjKpjU;->f$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    iget-boolean p0, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$u60fm-CI5wh7vITPqFIY5QjKpjU;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->lambda$updateLayout$0$OpKeyguardClockInfoView(Z)V

    return-void
.end method
