.class public final Lcom/google/android/libraries/social/settings/PreferenceScreen;
.super Lijo;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
.end annotation


# instance fields
.field private a:Landroid/widget/ListAdapter;

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    .end annotation

    .prologue
    .line 92
    sget v0, Laal;->uN:I

    invoke-direct {p0, p1, p2, v0}, Lijo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->y()Landroid/content/Context;

    move-result-object v1

    .line 151
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->a(Landroid/widget/ListView;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->o()Ljava/lang/CharSequence;

    move-result-object v3

    .line 156
    new-instance v4, Landroid/app/Dialog;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    const v0, 0x1030006

    .line 158
    :goto_0
    invoke-direct {v4, v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/google/android/libraries/social/settings/PreferenceScreen;->c:Landroid/app/Dialog;

    .line 159
    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 160
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    invoke-virtual {v4, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 164
    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {v4, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->C()Lijs;

    move-result-object v0

    invoke-virtual {v0, v4}, Lijs;->a(Landroid/content/DialogInterface;)V

    .line 171
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 172
    return-void

    .line 158
    :cond_2
    const v0, 0x1030005

    goto :goto_0
.end method

.method private h()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/libraries/social/settings/PreferenceScreen;->a:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1123
    new-instance v0, Lijp;

    invoke-direct {v0, p0}, Lijp;-><init>(Lijo;)V

    .line 110
    iput-object v0, p0, Lcom/google/android/libraries/social/settings/PreferenceScreen;->a:Landroid/widget/ListAdapter;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/social/settings/PreferenceScreen;->a:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method protected K_()V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->j()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected a(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lijy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    :cond_0
    invoke-super {p0, p1}, Lijo;->a(Landroid/os/Parcelable;)V

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    check-cast p1, Lijy;

    .line 224
    invoke-virtual {p1}, Lijy;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lijo;->a(Landroid/os/Parcelable;)V

    .line 225
    iget-boolean v0, p1, Lijy;->a:Z

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p1, Lijy;->b:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    invoke-direct {p0}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->h()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->D()V

    .line 138
    return-void
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method protected e()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 203
    invoke-super {p0}, Lijo;->e()Landroid/os/Parcelable;

    move-result-object v1

    .line 204
    iget-object v2, p0, Lcom/google/android/libraries/social/settings/PreferenceScreen;->c:Landroid/app/Dialog;

    .line 205
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 212
    :goto_0
    return-object v0

    .line 209
    :cond_1
    new-instance v0, Lijy;

    invoke-direct {v0, v1}, Lijy;-><init>(Landroid/os/Parcelable;)V

    .line 210
    const/4 v1, 0x1

    iput-boolean v1, v0, Lijy;->a:Z

    .line 211
    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lijy;->b:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/social/settings/PreferenceScreen;->c:Landroid/app/Dialog;

    .line 176
    invoke-virtual {p0}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->C()Lijs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lijs;->b(Landroid/content/DialogInterface;)V

    .line 177
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->h()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 190
    instance-of v1, v0, Lijc;

    if-nez v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    check-cast v0, Lijc;

    .line 193
    invoke-virtual {v0, p0}, Lijc;->a(Lcom/google/android/libraries/social/settings/PreferenceScreen;)V

    goto :goto_0
.end method
