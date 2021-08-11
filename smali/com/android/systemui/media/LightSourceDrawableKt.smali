.class public final Lcom/android/systemui/media/LightSourceDrawableKt;
.super Ljava/lang/Object;
.source "LightSourceDrawable.kt"


# static fields
.field private static final GRADIENT_STOPS:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/media/LightSourceDrawableKt;->GRADIENT_STOPS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final synthetic access$getGRADIENT_STOPS$p()[F
    .locals 1

    sget-object v0, Lcom/android/systemui/media/LightSourceDrawableKt;->GRADIENT_STOPS:[F

    return-object v0
.end method
