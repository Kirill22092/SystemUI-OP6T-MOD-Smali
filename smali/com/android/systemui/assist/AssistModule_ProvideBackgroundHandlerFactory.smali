.class public final Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;
.super Ljava/lang/Object;
.source "AssistModule_ProvideBackgroundHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;

    invoke-direct {v0}, Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;->INSTANCE:Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;->INSTANCE:Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;

    return-object v0
.end method

.method public static provideInstance()Landroid/os/Handler;
    .locals 1

    .line 21
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;->proxyProvideBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideBackgroundHandler()Landroid/os/Handler;
    .locals 2

    .line 30
    invoke-static {}, Lcom/android/systemui/assist/AssistModule;->provideBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/os/Handler;
    .locals 0

    .line 17
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;->provideInstance()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;->get()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
