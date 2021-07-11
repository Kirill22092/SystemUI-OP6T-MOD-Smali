.class public final Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;
.super Ljava/lang/Object;
.source "SystemServicesModule_ProvideVibratorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Vibrator;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Landroid/os/Vibrator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Landroid/os/Vibrator;"
        }
    .end annotation

    .line 28
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;->proxyProvideVibrator(Landroid/content/Context;)Landroid/os/Vibrator;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideVibrator(Landroid/content/Context;)Landroid/os/Vibrator;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/android/systemui/dagger/SystemServicesModule;->provideVibrator(Landroid/content/Context;)Landroid/os/Vibrator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Landroid/os/Vibrator;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;->provideInstance(Ljavax/inject/Provider;)Landroid/os/Vibrator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;->get()Landroid/os/Vibrator;

    move-result-object p0

    return-object p0
.end method
