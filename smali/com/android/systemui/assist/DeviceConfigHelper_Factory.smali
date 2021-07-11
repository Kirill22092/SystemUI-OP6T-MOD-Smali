.class public final Lcom/android/systemui/assist/DeviceConfigHelper_Factory;
.super Ljava/lang/Object;
.source "DeviceConfigHelper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/assist/DeviceConfigHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/assist/DeviceConfigHelper_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/android/systemui/assist/DeviceConfigHelper_Factory;

    invoke-direct {v0}, Lcom/android/systemui/assist/DeviceConfigHelper_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/assist/DeviceConfigHelper_Factory;->INSTANCE:Lcom/android/systemui/assist/DeviceConfigHelper_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/assist/DeviceConfigHelper_Factory;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/systemui/assist/DeviceConfigHelper_Factory;->INSTANCE:Lcom/android/systemui/assist/DeviceConfigHelper_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/systemui/assist/DeviceConfigHelper;
    .locals 1

    .line 18
    new-instance v0, Lcom/android/systemui/assist/DeviceConfigHelper;

    invoke-direct {v0}, Lcom/android/systemui/assist/DeviceConfigHelper;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/assist/DeviceConfigHelper;
    .locals 0

    .line 14
    invoke-static {}, Lcom/android/systemui/assist/DeviceConfigHelper_Factory;->provideInstance()Lcom/android/systemui/assist/DeviceConfigHelper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/assist/DeviceConfigHelper_Factory;->get()Lcom/android/systemui/assist/DeviceConfigHelper;

    move-result-object p0

    return-object p0
.end method
