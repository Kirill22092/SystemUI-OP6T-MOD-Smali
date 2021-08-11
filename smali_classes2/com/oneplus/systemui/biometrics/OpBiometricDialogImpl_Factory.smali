.class public final Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl_Factory;
.super Ljava/lang/Object;
.source "OpBiometricDialogImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final commandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)",
            "Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl_Factory;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)",
            "Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl_Factory;->get()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    move-result-object p0

    return-object p0
.end method
