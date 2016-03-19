.class final Lbhn;
.super Lbhk;
.source "SourceFile"


# instance fields
.field private a:Lawo;


# direct methods
.method public constructor <init>(Lawo;)V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lbhh;->g:Lbhh;

    invoke-direct {p0, v0}, Lbhk;-><init>(Lbhh;)V

    .line 45
    iput-object p1, p0, Lbhn;->a:Lawo;

    .line 46
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbhn;->a:Lawo;

    invoke-interface {v0, p1}, Lawo;->g(I)Z

    move-result v0

    return v0
.end method
