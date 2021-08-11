.class public final Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;
.super Ljava/lang/Object;
.source "SystemServicesModule_ProvideIBatteryStatsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/internal/app/IBatteryStats;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/internal/app/IBatteryStats;
    .locals 1

    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;->proxyProvideIBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideIBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .locals 2

    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule;->provideIBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/internal/app/IBatteryStats;
    .locals 0

    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;->provideInstance()Lcom/android/internal/app/IBatteryStats;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;->get()Lcom/android/internal/app/IBatteryStats;

    move-result-object p0

    return-object p0
.end method
