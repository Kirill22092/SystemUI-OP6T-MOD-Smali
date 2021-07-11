.class public final Lcom/android/systemui/BootCompleteCacheImpl_Factory;
.super Ljava/lang/Object;
.source "BootCompleteCacheImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/BootCompleteCacheImpl;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/BootCompleteCacheImpl_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/BootCompleteCacheImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/BootCompleteCacheImpl_Factory;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/android/systemui/BootCompleteCacheImpl_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/BootCompleteCacheImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/BootCompleteCacheImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/BootCompleteCacheImpl;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/android/systemui/BootCompleteCacheImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/BootCompleteCacheImpl;-><init>(Lcom/android/systemui/dump/DumpManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/BootCompleteCacheImpl;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/BootCompleteCacheImpl_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/BootCompleteCacheImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/BootCompleteCacheImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/BootCompleteCacheImpl_Factory;->get()Lcom/android/systemui/BootCompleteCacheImpl;

    move-result-object p0

    return-object p0
.end method
