.class public final synthetic Lcom/android/systemui/biometrics/-$$Lambda$AuthCredentialView$KVtRMfNSJ6YMQd7FjO_ZTh576v4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthCredentialView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthCredentialView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/-$$Lambda$AuthCredentialView$KVtRMfNSJ6YMQd7FjO_ZTh576v4;->f$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/-$$Lambda$AuthCredentialView$KVtRMfNSJ6YMQd7FjO_ZTh576v4;->f$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthCredentialView;->lambda$onAttachedToWindow$0$AuthCredentialView()V

    return-void
.end method
