.class public Lhzh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lhzj;

.field private final b:Lhzf;

.field private final c:Lhzf;


# direct methods
.method constructor <init>(Lhzj;Lhzf;Lhzf;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lhzh;->a:Lhzj;

    .line 22
    iput-object p2, p0, Lhzh;->b:Lhzf;

    .line 23
    iput-object p3, p0, Lhzh;->c:Lhzf;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lhzj;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lhzh;->a:Lhzj;

    return-object v0
.end method

.method public b()Lhzf;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lhzh;->b:Lhzf;

    return-object v0
.end method

.method public c()Lhzf;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lhzh;->c:Lhzf;

    return-object v0
.end method
