.class public final Lcom/android/systemui/pip/PipBoundsHandler_Factory;
.super Ljava/lang/Object;
.source "PipBoundsHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/pip/PipBoundsHandler;",
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

.field private final displayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private final pipSnapAlgorithmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSnapAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSnapAlgorithm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/pip/PipBoundsHandler_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/pip/PipBoundsHandler_Factory;->pipSnapAlgorithmProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/android/systemui/pip/PipBoundsHandler_Factory;->displayControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipBoundsHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSnapAlgorithm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;)",
            "Lcom/android/systemui/pip/PipBoundsHandler_Factory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/systemui/pip/PipBoundsHandler_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/pip/PipBoundsHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipBoundsHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSnapAlgorithm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;)",
            "Lcom/android/systemui/pip/PipBoundsHandler;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/pip/PipBoundsHandler;

    .line 38
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pip/PipSnapAlgorithm;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/wm/DisplayController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/pip/PipBoundsHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/pip/PipSnapAlgorithm;Lcom/android/systemui/wm/DisplayController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/pip/PipBoundsHandler;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/pip/PipBoundsHandler_Factory;->pipSnapAlgorithmProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/pip/PipBoundsHandler_Factory;->displayControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/pip/PipBoundsHandler_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipBoundsHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipBoundsHandler_Factory;->get()Lcom/android/systemui/pip/PipBoundsHandler;

    move-result-object p0

    return-object p0
.end method
