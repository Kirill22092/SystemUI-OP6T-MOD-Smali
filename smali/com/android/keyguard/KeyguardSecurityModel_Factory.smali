.class public final Lcom/android/keyguard/KeyguardSecurityModel_Factory;
.super Ljava/lang/Object;
.source "KeyguardSecurityModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/KeyguardSecurityModel;",
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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardSecurityModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/keyguard/KeyguardSecurityModel_Factory;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel_Factory;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityModel_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardSecurityModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/keyguard/KeyguardSecurityModel;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/keyguard/KeyguardSecurityModel;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityModel_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityModel_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardSecurityModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityModel_Factory;->get()Lcom/android/keyguard/KeyguardSecurityModel;

    move-result-object p0

    return-object p0
.end method
