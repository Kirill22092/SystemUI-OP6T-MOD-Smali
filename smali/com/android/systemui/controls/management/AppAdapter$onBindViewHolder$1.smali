.class final Lcom/android/systemui/controls/management/AppAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "AppAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/AppAdapter;->onBindViewHolder(Lcom/android/systemui/controls/management/AppAdapter$Holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic this$0:Lcom/android/systemui/controls/management/AppAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/AppAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/AppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter;

    iput p2, p0, Lcom/android/systemui/controls/management/AppAdapter$onBindViewHolder$1;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/controls/management/AppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter;

    invoke-static {p1}, Lcom/android/systemui/controls/management/AppAdapter;->access$getOnAppSelected$p(Lcom/android/systemui/controls/management/AppAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter;

    invoke-static {v0}, Lcom/android/systemui/controls/management/AppAdapter;->access$getListOfServices$p(Lcom/android/systemui/controls/management/AppAdapter;)Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/controls/management/AppAdapter$onBindViewHolder$1;->$index:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ControlsServiceInfo;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/DefaultAppInfo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
