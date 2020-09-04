.class public final Lcom/oneplus/lib/preference/PreferenceScreen;
.super Lcom/oneplus/lib/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mListView:Landroid/widget/ListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 110
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_preferenceScreenStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->isSupportXVibrate()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "vibrator"

    .line 112
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 6

    .line 172
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    const-string v1, "layout_inflater"

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 179
    sget v3, Lcom/oneplus/commonctrl/R$layout;->op_preference_list_fragment:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x102000a

    .line 181
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 182
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 185
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 186
    new-instance v4, Landroid/app/Dialog;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 187
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 192
    :goto_0
    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 193
    invoke-virtual {v4, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {v4, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    throw v2
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 1

    .line 156
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->onAttachedToActivity()V

    return-void
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onClick()V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 145
    new-instance v0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;-><init>(Lcom/oneplus/lib/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 206
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    throw v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 220
    instance-of p2, p1, Landroid/widget/ListView;

    if-eqz p2, :cond_0

    .line 221
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 224
    instance-of p2, p1, Lcom/oneplus/lib/preference/Preference;

    if-nez p2, :cond_1

    return-void

    .line 226
    :cond_1
    move-object p2, p1

    check-cast p2, Lcom/oneplus/lib/preference/Preference;

    .line 227
    instance-of p1, p1, Lcom/oneplus/lib/preference/SwitchPreference;

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/lib/util/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mVibrator:Landroid/os/Vibrator;

    const/16 p4, 0x3eb

    invoke-static {p1, p3, p4}, Lcom/oneplus/lib/util/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mVibratePattern:[J

    .line 231
    iget-object p1, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mVibratePattern:[J

    iget-object p3, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1, p3}, Lcom/oneplus/lib/util/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    .line 234
    :cond_2
    invoke-virtual {p2, p0}, Lcom/oneplus/lib/preference/Preference;->performClick(Lcom/oneplus/lib/preference/PreferenceScreen;)V

    return-void
.end method
