.class public final Lcom/android/systemui/ImageWallpaper_Factory;
.super Ljava/lang/Object;
.source "ImageWallpaper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/ImageWallpaper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/ImageWallpaper_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/android/systemui/ImageWallpaper_Factory;

    invoke-direct {v0}, Lcom/android/systemui/ImageWallpaper_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/ImageWallpaper_Factory;->INSTANCE:Lcom/android/systemui/ImageWallpaper_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/ImageWallpaper_Factory;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/systemui/ImageWallpaper_Factory;->INSTANCE:Lcom/android/systemui/ImageWallpaper_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/systemui/ImageWallpaper;
    .locals 1

    .line 18
    new-instance v0, Lcom/android/systemui/ImageWallpaper;

    invoke-direct {v0}, Lcom/android/systemui/ImageWallpaper;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/ImageWallpaper;
    .locals 0

    .line 14
    invoke-static {}, Lcom/android/systemui/ImageWallpaper_Factory;->provideInstance()Lcom/android/systemui/ImageWallpaper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper_Factory;->get()Lcom/android/systemui/ImageWallpaper;

    move-result-object p0

    return-object p0
.end method
