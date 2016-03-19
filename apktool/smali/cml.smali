.class final Lcml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lclp;


# static fields
.field static final a:Z


# instance fields
.field final b:Lcfc;

.field final c:Lcmo;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lclo;",
            ">;"
        }
    .end annotation
.end field

.field e:Lclq;

.field f:Lhbf;

.field g:Lkhf;

.field private final h:Lcmn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lezi;->g:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcml;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    iput-object v0, p0, Lcml;->b:Lcfc;

    .line 47
    new-instance v0, Lcmn;

    .line 1170
    invoke-direct {v0, p0}, Lcmn;-><init>(Lcml;)V

    .line 47
    iput-object v0, p0, Lcml;->h:Lcmn;

    .line 48
    new-instance v0, Lcmo;

    .line 2120
    invoke-direct {v0, p0}, Lcmo;-><init>(Lcml;)V

    .line 48
    iput-object v0, p0, Lcml;->c:Lcmo;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcml;->d:Ljava/util/List;

    .line 50
    sget-object v0, Lclq;->e:Lclq;

    iput-object v0, p0, Lcml;->e:Lclq;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcml;->f:Lhbf;

    .line 55
    iget-object v0, p0, Lcml;->b:Lcfc;

    iget-object v1, p0, Lcml;->h:Lcmn;

    invoke-virtual {v0, v1}, Lcfc;->a(Lhku;)V

    .line 56
    return-void
.end method


# virtual methods
.method public a()Lclq;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcml;->e:Lclq;

    return-object v0
.end method

.method public a(Lclo;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcml;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 81
    iget-object v0, p0, Lcml;->f:Lhbf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcml;->g:Lkhf;

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v2, Lkhf;

    invoke-direct {v2}, Lkhf;-><init>()V

    .line 86
    iget-object v0, p0, Lcml;->g:Lkhf;

    iget-object v0, v0, Lkhf;->a:Ljava/lang/String;

    iput-object v0, v2, Lkhf;->a:Ljava/lang/String;

    .line 87
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lkhf;->u:Ljava/lang/Integer;

    .line 88
    new-instance v0, Lkhi;

    invoke-direct {v0}, Lkhi;-><init>()V

    .line 89
    new-array v1, v1, [Lkhf;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, v0, Lkhi;->c:[Lkhf;

    .line 91
    iget-object v1, p0, Lcml;->f:Lhbf;

    new-instance v2, Lcmm;

    invoke-direct {v2, p0, p1}, Lcmm;-><init>(Lcml;Z)V

    invoke-interface {v1, v0, v2}, Lhbf;->b(Llyi;Lhbp;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 87
    goto :goto_1
.end method

.method public b(Lclo;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcml;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcml;->g:Lkhf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcml;->g:Lkhf;

    iget-object v1, v1, Lkhf;->b:Ljava/lang/Integer;

    .line 3043
    invoke-static {v1, v0}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 111
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcml;->g:Lkhf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcml;->g:Lkhf;

    iget-object v0, v0, Lkhf;->A:Ljava/lang/String;

    goto :goto_0
.end method
