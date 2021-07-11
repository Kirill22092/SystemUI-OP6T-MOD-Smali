.class public final Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;
.super Ljava/lang/Object;
.source "ControlsController.kt"

# interfaces
.implements Lcom/android/systemui/controls/controller/ControlsController$LoadData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerKt;->createLoadDataObject(Ljava/util/List;Ljava/util/List;Z)Lcom/android/systemui/controls/controller/ControlsController$LoadData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final allControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final errorOnLoad:Z

.field private final favoritesIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->allControls:Ljava/util/List;

    .line 229
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->favoritesIds:Ljava/util/List;

    .line 230
    iput-boolean p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->errorOnLoad:Z

    return-void
.end method


# virtual methods
.method public getAllControls()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 228
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->allControls:Ljava/util/List;

    return-object p0
.end method

.method public getErrorOnLoad()Z
    .locals 0

    .line 230
    iget-boolean p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->errorOnLoad:Z

    return p0
.end method

.method public getFavoritesIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 229
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->favoritesIds:Ljava/util/List;

    return-object p0
.end method
