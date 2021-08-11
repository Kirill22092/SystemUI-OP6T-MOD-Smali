.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideUiEventLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/internal/logging/UiEventLogger;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;->INSTANCE:Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;->INSTANCE:Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/internal/logging/UiEventLogger;
    .locals 1

    invoke-static {}, Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;->proxyProvideUiEventLogger()Lcom/android/internal/logging/UiEventLogger;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideUiEventLogger()Lcom/android/internal/logging/UiEventLogger;
    .locals 2

    invoke-static {}, Lcom/android/systemui/dagger/DependencyProvider;->provideUiEventLogger()Lcom/android/internal/logging/UiEventLogger;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/logging/UiEventLogger;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    invoke-static {}, Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;->provideInstance()Lcom/android/internal/logging/UiEventLogger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;->get()Lcom/android/internal/logging/UiEventLogger;

    move-result-object p0

    return-object p0
.end method
