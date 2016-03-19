.class public Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;
.super Lcom/google/android/libraries/componentview/components/base/ViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionControl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/componentview/components/base/ViewComponent",
        "<",
        "Landroid/widget/FrameLayout;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionControl;"
    }
.end annotation


# static fields
.field private static final e:I

.field private static final f:I

.field private static final g:I


# instance fields
.field private h:Lcom/google/android/libraries/componentview/components/sections/views/FloatingActionButton;

.field private i:Landroid/widget/TextView;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Lcom/google/android/libraries/componentview/components/elements/Expandable;

.field private n:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

.field private final o:Lcom/google/android/libraries/componentview/services/application/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "0.922, 0.922, 0.922, 1"

    invoke-static {v0}, Lcom/google/android/libraries/componentview/core/Utils;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->e:I

    .line 49
    const-string v0, "0.96, 0.96, 0.96, 1"

    invoke-static {v0}, Lcom/google/android/libraries/componentview/core/Utils;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->f:I

    .line 52
    const-string v0, "0, 0, 0, 0.54"

    invoke-static {v0}, Lcom/google/android/libraries/componentview/core/Utils;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->g:I

    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 236
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->k:Ljava/lang/String;

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->h:Lcom/google/android/libraries/componentview/components/sections/views/FloatingActionButton;

    if-eqz p1, :cond_3

    const/high16 v0, 0x43340000    # 180.0f

    :goto_2
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/componentview/components/sections/views/FloatingActionButton;->setRotation(F)V

    .line 241
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->j:Ljava/lang/String;

    goto :goto_0

    .line 238
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 240
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/google/android/libraries/componentview/components/elements/Expandable;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->m:Lcom/google/android/libraries/componentview/components/elements/Expandable;

    .line 170
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->l:Z

    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->b(Z)V

    .line 165
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->m:Lcom/google/android/libraries/componentview/components/elements/Expandable;

    if-eqz v0, :cond_1

    .line 216
    iget-boolean v4, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->l:Z

    .line 217
    iget-object v5, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->m:Lcom/google/android/libraries/componentview/components/elements/Expandable;

    if-nez v4, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v5, v0}, Lcom/google/android/libraries/componentview/components/elements/Expandable;->a(Z)Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionResult;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionResult;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    if-nez v4, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->l:Z

    .line 220
    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->l:Z

    invoke-direct {p0, v1}, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->b(Z)V

    .line 222
    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionResult;->b()Ljava/util/List;

    move-result-object v4

    .line 223
    iget-object v5, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->o:Lcom/google/android/libraries/componentview/services/application/Logger;

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->n:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    if-eqz v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->n:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;->f()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 225
    :goto_2
    invoke-static {v4}, Lcom/google/android/libraries/componentview/services/internal/Graft;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/FabFooterComponent;->n:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    .line 1021
    if-eqz v0, :cond_5

    .line 1022
    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;->g()Ljava/lang/String;

    move-result-object v3

    .line 2042
    :cond_0
    :goto_3
    sget-object v0, Lkxm;->b:Lkxm;

    .line 223
    invoke-interface {v5, v1, v6, v3, v0}, Lcom/google/android/libraries/componentview/services/application/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 217
    goto :goto_0

    :cond_3
    move v1, v2

    .line 219
    goto :goto_1

    :cond_4
    move-object v1, v3

    .line 224
    goto :goto_2

    .line 1025
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v2, v0}, Lfii;->a(II)I

    move-result v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/componentview/services/internal/Graft;

    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/services/internal/Graft;->a()Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    move-result-object v0

    .line 1026
    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;->g()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method
