.class public final synthetic Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$jBVEr0PDLC8cO_n131H8PkRyoBg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$jBVEr0PDLC8cO_n131H8PkRyoBg;->f$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$jBVEr0PDLC8cO_n131H8PkRyoBg;->f$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->lambda$updateTime$5$OpKeyguardClockInfoView()V

    return-void
.end method
