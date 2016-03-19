.class public final Lcmt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/content/res/ColorStateList;

.field private g:Landroid/view/View$OnClickListener;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcmt;->a:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcmt;->b:Z

    .line 90
    iput-object v1, p0, Lcmt;->c:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcmt;->d:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcmt;->e:Landroid/content/res/ColorStateList;

    .line 93
    iput-object v1, p0, Lcmt;->f:Landroid/content/res/ColorStateList;

    .line 94
    iput-object v1, p0, Lcmt;->g:Landroid/view/View$OnClickListener;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcmt;->h:I

    return-void
.end method


# virtual methods
.method public a()Lcmt;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcmt;->b:Z

    .line 114
    return-object p0
.end method

.method public a(I)Lcmt;
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcmt;->a:I

    .line 104
    return-object p0
.end method

.method public a(Landroid/view/View$OnClickListener;)Lcmt;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcmt;->g:Landroid/view/View$OnClickListener;

    .line 187
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcmt;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcmt;->c:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public b()Lcms;
    .locals 9

    .prologue
    .line 202
    new-instance v0, Lcms;

    iget v1, p0, Lcmt;->a:I

    iget-boolean v2, p0, Lcmt;->b:Z

    iget-object v3, p0, Lcmt;->c:Ljava/lang/String;

    iget-object v4, p0, Lcmt;->d:Ljava/lang/String;

    iget-object v5, p0, Lcmt;->e:Landroid/content/res/ColorStateList;

    iget-object v6, p0, Lcmt;->f:Landroid/content/res/ColorStateList;

    iget-object v7, p0, Lcmt;->g:Landroid/view/View$OnClickListener;

    iget v8, p0, Lcmt;->h:I

    .line 1015
    invoke-direct/range {v0 .. v8}, Lcms;-><init>(IZLjava/lang/String;Ljava/lang/String;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/view/View$OnClickListener;I)V

    .line 202
    return-object v0
.end method

.method public b(I)Lcmt;
    .locals 1

    .prologue
    .line 175
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcmt;->f:Landroid/content/res/ColorStateList;

    .line 176
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcmt;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcmt;->d:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public c(I)Lcmt;
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Lcmt;->h:I

    .line 197
    return-object p0
.end method
