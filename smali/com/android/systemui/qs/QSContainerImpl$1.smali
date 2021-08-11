.class Lcom/android/systemui/qs/QSContainerImpl$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "QSContainerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSContainerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/systemui/qs/QSContainerImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/systemui/qs/QSContainerImpl;)F
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/qs/QSContainerImpl;->access$000(Lcom/android/systemui/qs/QSContainerImpl;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl$1;->getValue(Lcom/android/systemui/qs/QSContainerImpl;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/systemui/qs/QSContainerImpl;F)V
    .locals 0

    float-to-int p0, p2

    invoke-static {p1, p0}, Lcom/android/systemui/qs/QSContainerImpl;->access$100(Lcom/android/systemui/qs/QSContainerImpl;I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSContainerImpl$1;->setValue(Lcom/android/systemui/qs/QSContainerImpl;F)V

    return-void
.end method
