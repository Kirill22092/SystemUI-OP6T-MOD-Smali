.class public final Lcom/android/systemui/dump/LogBufferFreezer_Factory;
.super Ljava/lang/Object;
.source "LogBufferFreezer_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/dump/LogBufferFreezer;",
        ">;"
    }
.end annotation


# instance fields
.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
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
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/dump/LogBufferFreezer_Factory;->executorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dump/LogBufferFreezer_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)",
            "Lcom/android/systemui/dump/LogBufferFreezer_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/android/systemui/dump/LogBufferFreezer_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/dump/LogBufferFreezer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dump/LogBufferFreezer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)",
            "Lcom/android/systemui/dump/LogBufferFreezer;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/systemui/dump/LogBufferFreezer;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/dump/LogBufferFreezer;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/dump/LogBufferFreezer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/systemui/dump/LogBufferFreezer_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferFreezer_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/dump/LogBufferFreezer_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dump/LogBufferFreezer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/dump/LogBufferFreezer_Factory;->get()Lcom/android/systemui/dump/LogBufferFreezer;

    move-result-object p0

    return-object p0
.end method
