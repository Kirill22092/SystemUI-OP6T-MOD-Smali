.class public final Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;
.super Ljava/lang/Object;
.source "SystemUIDefaultModule_ProvideLeakReportEmailFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;

    return-object v0
.end method

.method public static provideInstance()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-static {}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;->proxyProvideLeakReportEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideLeakReportEmail()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {}, Lcom/android/systemui/dagger/SystemUIDefaultModule;->provideLeakReportEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 0

    .line 17
    invoke-static {}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;->provideInstance()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
