.class public Lbut;
.super Limg;
.source "SourceFile"


# instance fields
.field a:Landroid/support/v4/view/ViewPager;

.field private aj:Lbdp;

.field private ak:Lhbw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhbw",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

.field c:Lbuw;

.field d:Lhpu;

.field e:Leit;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbit;",
            ">;"
        }
    .end annotation
.end field

.field g:Lceh;

.field h:Lcei;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldro;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Limg;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbut;->f:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbut;->i:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lbut;->g:Lceh;

    invoke-interface {v0}, Lceh;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lbut;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lbut;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbit;

    .line 277
    iget-object v2, p0, Lbut;->e:Leit;

    invoke-virtual {v2, v0}, Leit;->b(Lehx;)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lbut;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 282
    :cond_1
    iget-object v0, p0, Lbut;->ak:Lhbw;

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lbut;->ak:Lhbw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhbw;->cancel(Z)Z

    .line 286
    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 135
    iget-object v0, p0, Lbut;->aj:Lbdp;

    const-string v1, "babel_stickers_account_id"

    const-string v2, "108618507921641169817"

    .line 136
    invoke-interface {v0, v1, v2}, Lbdp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v0, Lbfz;

    iget-object v2, p0, Lbut;->context:Lill;

    invoke-direct {v0, v2, p1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 139
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lbfz;->a(Z)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lbut;->i:Ljava/util/List;

    .line 142
    iget-object v2, p0, Lbut;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    new-instance v2, Ldro;

    invoke-direct {v2}, Ldro;-><init>()V

    .line 144
    invoke-virtual {v0}, Lbfz;->B()Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Ldro;->e:Ljava/util/List;

    .line 145
    iget-object v0, v2, Ldro;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v2, Ldro;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-string v0, "Recent"

    iput-object v0, v2, Ldro;->b:Ljava/lang/String;

    .line 148
    const-string v0, "Recent"

    iput-object v0, v2, Ldro;->a:Ljava/lang/String;

    .line 149
    iget-object v0, v2, Ldro;->e:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrp;

    iput-object v0, v2, Ldro;->c:Ldrp;

    .line 150
    iget-object v0, p0, Lbut;->i:Ljava/util/List;

    invoke-interface {v0, v12, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 155
    :cond_0
    iget-object v2, p0, Lbut;->context:Lill;

    iget-object v0, p0, Lbut;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    .line 1101
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v4

    .line 1102
    const-class v0, Leot;

    invoke-static {v2, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 1103
    invoke-interface {v0, p1}, Leot;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1104
    invoke-static {v4}, Ldvd;->d(Lbfd;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1105
    :cond_1
    :goto_0
    return-void

    .line 1107
    :cond_2
    invoke-static {v2, v4}, Lbff;->i(Landroid/content/Context;Lbfd;)J

    move-result-wide v6

    .line 1121
    const-string v0, "babel_stickers_query_limit_ms"

    sget-wide v8, Leea;->i:J

    .line 1122
    invoke-static {v2, v0, v8, v9}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1128
    if-nez v3, :cond_3

    add-long/2addr v8, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-gez v0, :cond_1

    .line 1129
    :cond_3
    const-string v0, "Babel_StickersPagerFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v5, 0x3f

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Sticker update initiated. last:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " empty:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1130
    invoke-static {v4, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->o(Lbfd;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lbut;->getActivity()Lba;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selected_sticker_album_id"

    .line 261
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0}, Lbut;->getActivity()Lba;

    move-result-object v1

    .line 267
    if-nez v1, :cond_0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "selected_sticker_album_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 249
    if-eqz p3, :cond_0

    .line 250
    const-string v0, "album_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0, v0}, Lbut;->a(Ljava/lang/String;)V

    .line 255
    :cond_0
    invoke-virtual {p0}, Lbut;->getParentFragment()Lav;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lav;->onActivityResult(IILandroid/content/Intent;)V

    .line 256
    return-void
.end method

.method public onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lbut;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lbut;->d:Lhpu;

    .line 85
    iget-object v0, p0, Lbut;->binder:Lilh;

    const-class v1, Lbdp;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    iput-object v0, p0, Lbut;->aj:Lbdp;

    .line 86
    iget-object v0, p0, Lbut;->binder:Lilh;

    const-class v1, Leit;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    iput-object v0, p0, Lbut;->e:Leit;

    .line 87
    iget-object v0, p0, Lbut;->binder:Lilh;

    const-class v1, Lceh;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceh;

    iput-object v0, p0, Lbut;->g:Lceh;

    .line 88
    iget-object v0, p0, Lbut;->binder:Lilh;

    const-class v1, Lcei;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcei;

    iput-object v0, p0, Lbut;->h:Lcei;

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 161
    sget v0, Laal;->lc:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 162
    sget v0, Laen;->hT:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lbut;->a:Landroid/support/v4/view/ViewPager;

    .line 163
    sget v0, Laen;->hS:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    iput-object v0, p0, Lbut;->b:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 164
    iget-object v0, p0, Lbut;->b:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->a()V

    .line 165
    iget-object v0, p0, Lbut;->b:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    sget v2, Laal;->kZ:I

    sget v3, Laen;->hQ:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->a(II)V

    .line 166
    iget-object v0, p0, Lbut;->b:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    iget-object v2, p0, Lbut;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->a(Landroid/support/v4/view/ViewPager;)V

    .line 168
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->kT:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 169
    iget-object v2, p0, Lbut;->b:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 170
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lbuu;

    invoke-direct {v3, p0, v0}, Lbuu;-><init>(Lbut;I)V

    .line 171
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 182
    return-object v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-super {p0}, Limg;->onPause()V

    .line 188
    iget-object v0, p0, Lbut;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbut;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v0

    iget-object v1, p0, Lbut;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lbut;->i:Ljava/util/List;

    iget-object v1, p0, Lbut;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldro;

    iget-object v0, v0, Ldro;->a:Ljava/lang/String;

    .line 190
    invoke-virtual {p0, v0}, Lbut;->a(Ljava/lang/String;)V

    .line 192
    :cond_0
    invoke-direct {p0}, Lbut;->a()V

    .line 193
    iget-object v0, p0, Lbut;->c:Lbuw;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lbut;->c:Lbuw;

    invoke-virtual {v0}, Lbuw;->e()V

    .line 195
    iput-object v2, p0, Lbut;->c:Lbuw;

    .line 198
    :cond_1
    iget-object v0, p0, Lbut;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Lkh;)V

    .line 200
    iget-object v0, p0, Lbut;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lbut;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 203
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 207
    iget-object v0, p0, Lbut;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbut;->c:Lbuw;

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lbut;->d:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 212
    iget-object v1, p0, Lbut;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 213
    iget-object v1, p0, Lbut;->b:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->setVisibility(I)V

    .line 214
    invoke-direct {p0}, Lbut;->a()V

    .line 215
    new-instance v1, Lbuv;

    invoke-direct {v1, p0, v0, p0}, Lbuv;-><init>(Lbut;ILav;)V

    iput-object v1, p0, Lbut;->ak:Lhbw;

    .line 242
    iget-object v0, p0, Lbut;->ak:Lhbw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lhbw;->a([Ljava/lang/Object;)Lhbw;

    .line 244
    :cond_0
    invoke-super {p0}, Limg;->onResume()V

    .line 245
    return-void
.end method
