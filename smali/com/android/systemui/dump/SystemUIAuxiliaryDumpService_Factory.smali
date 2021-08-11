.class public final Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;
.super Ljava/lang/Object;
.source "SystemUIAuxiliaryDumpService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;",
        ">;"
    }
.end annotation


# instance fields
.field private final dumpHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpHandler;",
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
            "Lcom/android/systemui/dump/DumpHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;->dumpHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpHandler;",
            ">;)",
            "Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpHandler;",
            ">;)",
            "Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;-><init>(Lcom/android/systemui/dump/DumpHandler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;->dumpHandlerProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;->get()Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;

    move-result-object p0

    return-object p0
.end method
