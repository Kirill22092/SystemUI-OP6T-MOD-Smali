.class public final Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;
.super Ljava/lang/Object;
.source "SystemUIModule_ProvideSysUiStateFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/model/SysUiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/systemui/model/SysUiState;
    .locals 1

    invoke-static {}, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;->proxyProvideSysUiState()Lcom/android/systemui/model/SysUiState;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideSysUiState()Lcom/android/systemui/model/SysUiState;
    .locals 2

    invoke-static {}, Lcom/android/systemui/dagger/SystemUIModule;->provideSysUiState()Lcom/android/systemui/model/SysUiState;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/model/SysUiState;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/model/SysUiState;
    .locals 0

    invoke-static {}, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;->provideInstance()Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;->get()Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    return-object p0
.end method
