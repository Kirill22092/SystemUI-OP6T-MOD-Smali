.class public final Lcom/oneplus/worklife/OPWLBHelper_Factory;
.super Ljava/lang/Object;
.source "OPWLBHelper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/oneplus/worklife/OPWLBHelper;",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/oneplus/worklife/OPWLBHelper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/oneplus/worklife/OPWLBHelper_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper_Factory;

    invoke-direct {v0, p0}, Lcom/oneplus/worklife/OPWLBHelper_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/oneplus/worklife/OPWLBHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/oneplus/worklife/OPWLBHelper;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/oneplus/worklife/OPWLBHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/oneplus/worklife/OPWLBHelper;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oneplus/worklife/OPWLBHelper_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/oneplus/worklife/OPWLBHelper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/worklife/OPWLBHelper_Factory;->get()Lcom/oneplus/worklife/OPWLBHelper;

    move-result-object p0

    return-object p0
.end method
