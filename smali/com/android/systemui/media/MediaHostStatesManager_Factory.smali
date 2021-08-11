.class public final Lcom/android/systemui/media/MediaHostStatesManager_Factory;
.super Ljava/lang/Object;
.source "MediaHostStatesManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/media/MediaHostStatesManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/media/MediaHostStatesManager_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/MediaHostStatesManager_Factory;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaHostStatesManager_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaHostStatesManager_Factory;->INSTANCE:Lcom/android/systemui/media/MediaHostStatesManager_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/media/MediaHostStatesManager_Factory;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/MediaHostStatesManager_Factory;->INSTANCE:Lcom/android/systemui/media/MediaHostStatesManager_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/systemui/media/MediaHostStatesManager;
    .locals 1

    new-instance v0, Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaHostStatesManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/media/MediaHostStatesManager;
    .locals 0

    invoke-static {}, Lcom/android/systemui/media/MediaHostStatesManager_Factory;->provideInstance()Lcom/android/systemui/media/MediaHostStatesManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHostStatesManager_Factory;->get()Lcom/android/systemui/media/MediaHostStatesManager;

    move-result-object p0

    return-object p0
.end method
