.class public final synthetic Lcom/android/systemui/biometrics/-$$Lambda$AuthContainerView$vtbE2-wtRO04iHv7UirSn4_zgk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/-$$Lambda$AuthContainerView$vtbE2-wtRO04iHv7UirSn4_zgk0;->f$0:Lcom/android/systemui/biometrics/AuthContainerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/-$$Lambda$AuthContainerView$vtbE2-wtRO04iHv7UirSn4_zgk0;->f$0:Lcom/android/systemui/biometrics/AuthContainerView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->lambda$animateAway$2$AuthContainerView()V

    return-void
.end method
