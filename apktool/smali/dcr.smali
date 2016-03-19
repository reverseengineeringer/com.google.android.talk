.class public final Ldcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldck;
.implements Lilu;
.implements Linu;
.implements Lioo;
.implements Liow;
.implements Lioz;


# instance fields
.field a:Landroid/content/Context;

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ldcl;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ldco;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/app/Activity;

.field private e:Lhsc;

.field private f:Ldcj;

.field private g:Lifq;

.field private h:Lhpu;

.field private i:Lhsb;


# direct methods
.method constructor <init>(Landroid/app/Activity;Liog;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p2}, Ldcr;-><init>(Liog;)V

    .line 85
    iput-object p1, p0, Ldcr;->d:Landroid/app/Activity;

    .line 86
    return-void
.end method

.method constructor <init>(Liog;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ldcr;->b:Landroid/util/SparseArray;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ldcr;->c:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Ldcs;

    invoke-direct {v0, p0}, Ldcs;-><init>(Ldcr;)V

    iput-object v0, p0, Ldcr;->i:Lhsb;

    .line 90
    invoke-virtual {p1, p0}, Liog;->a(Lioz;)Lioz;

    .line 92
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Ldcr;->g:Lifq;

    new-instance v1, Lifz;

    invoke-direct {v1, p0, p1}, Lifz;-><init>(Ldcr;I)V

    invoke-interface {v0, p1, v1}, Lifq;->a(ILifz;)Lifq;

    .line 178
    return-void
.end method

.method private a(ILjava/util/List;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ldcm;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Ldcr;->h:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v1

    .line 223
    iget-object v0, p0, Ldcr;->a:Landroid/content/Context;

    const-class v2, Lhba;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v1

    .line 225
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcm;

    .line 226
    new-instance v3, Lkln;

    invoke-direct {v3}, Lkln;-><init>()V

    .line 227
    iget-object v4, v0, Ldcm;->a:Ljava/lang/String;

    iput-object v4, v3, Lkln;->a:Ljava/lang/String;

    .line 228
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lkln;->b:Ljava/lang/Boolean;

    .line 229
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lkln;->c:Ljava/lang/Boolean;

    .line 230
    iget-boolean v0, v0, Ldcm;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lkln;->d:Ljava/lang/Boolean;

    .line 231
    invoke-interface {v1, p1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0, v3}, Lhax;->a(Lkln;)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method public static synthetic a(Ldcr;ILjava/util/List;ZZ)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Ldcr;->a(ILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public a(ILdcl;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Ldcr;->b:Landroid/util/SparseArray;

    .line 150
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Listener should be set only once"

    .line 149
    invoke-static {v0, v2}, Lfii;->b(ZLjava/lang/Object;)V

    .line 151
    iget-object v0, p0, Ldcr;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    iget-object v0, p0, Ldcr;->g:Lifq;

    if-nez v0, :cond_1

    .line 156
    const-string v0, "Babel_Permissions"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Not registering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 150
    goto :goto_0

    .line 158
    :cond_1
    invoke-direct {p0, p1}, Ldcr;->a(I)V

    goto :goto_1
.end method

.method public a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ldcm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcm;

    .line 305
    iget-boolean v0, v0, Ldcm;->b:Z

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Ldcr;->a:Landroid/content/Context;

    sget v1, Laal;->oH:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2315
    :cond_1
    iget-object v0, p0, Ldcr;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcl;

    .line 2316
    iget-object v1, p0, Ldcr;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldco;

    .line 2317
    iget-object v2, p0, Ldcr;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2318
    iget-object v1, v1, Ldco;->b:Landroid/os/Bundle;

    invoke-interface {v0, p2, v1}, Ldcl;->a(Ljava/util/List;Landroid/os/Bundle;)V

    .line 312
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Ldcr;->d:Landroid/app/Activity;

    .line 145
    return-void
.end method

.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 96
    iput-object p1, p0, Ldcr;->a:Landroid/content/Context;

    .line 98
    const-class v0, Ldcj;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcj;

    iput-object v0, p0, Ldcr;->f:Ldcj;

    .line 99
    const-class v0, Lifq;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lifq;

    iput-object v0, p0, Ldcr;->g:Lifq;

    .line 1137
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldcr;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1138
    iget-object v1, p0, Ldcr;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Ldcr;->a(I)V

    .line 1137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const-class v0, Lhsc;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsc;

    iput-object v0, p0, Ldcr;->e:Lhsc;

    .line 106
    iget-object v0, p0, Ldcr;->e:Lhsc;

    sget v1, Laal;->oD:I

    iget-object v2, p0, Ldcr;->i:Lhsb;

    invoke-virtual {v0, v1, v2}, Lhsc;->a(ILhsb;)Lhsc;

    .line 108
    const-class v0, Lhpu;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Ldcr;->h:Lhpu;

    .line 109
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    const-string v0, "permission_manager_pending_requests"

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldco;

    .line 118
    iget-object v2, p0, Ldcr;->c:Landroid/util/SparseArray;

    iget v3, v0, Ldco;->c:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public a(Ldco;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldco;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1190
    iget-object v0, p0, Ldcr;->c:Landroid/util/SparseArray;

    iget v1, p1, Ldco;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1192
    iget-object v0, p0, Ldcr;->f:Ldcj;

    invoke-interface {v0, p2}, Ldcj;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget v0, p1, Ldco;->c:I

    .line 1203
    new-instance v1, Ldct;

    invoke-direct {v1, p0, p2, v0}, Ldct;-><init>(Ldcr;Ljava/util/List;I)V

    invoke-static {v1}, Laal;->a(Ljava/lang/Runnable;)V

    .line 1195
    :goto_0
    return-void

    .line 1197
    :cond_0
    iget v0, p1, Ldco;->c:I

    .line 1242
    new-instance v1, Lify;

    invoke-direct {v1, p0}, Lify;-><init>(Ldcr;)V

    .line 1261
    iget-object v2, p0, Ldcr;->g:Lifq;

    invoke-interface {v2, v1, v0, p2}, Lifq;->a(Lify;ILjava/util/List;)V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Ldcr;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ldcr;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 129
    iget-object v2, p0, Ldcr;->c:Landroid/util/SparseArray;

    iget-object v3, p0, Ldcr;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    const-string v0, "permission_manager_pending_requests"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 134
    :cond_1
    return-void
.end method
