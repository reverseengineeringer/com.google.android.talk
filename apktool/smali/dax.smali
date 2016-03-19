.class final Ldax;
.super Ldbd;
.source "SourceFile"


# instance fields
.field final synthetic c:Ldas;


# direct methods
.method constructor <init>(Ldas;II)V
    .locals 6

    .prologue
    .line 138
    iput-object p1, p0, Ldax;->c:Ldas;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ldbd;-><init>(Ldas;IZZI)V

    return-void
.end method


# virtual methods
.method protected a(Laao;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ldax;->c:Ldas;

    check-cast p1, Ldbc;

    .line 1046
    iput-object p1, v0, Ldas;->h:Ldbc;

    .line 142
    iget-object v0, p0, Ldax;->c:Ldas;

    .line 2046
    iget-object v0, v0, Ldas;->h:Ldbc;

    .line 142
    invoke-virtual {v0}, Ldbc;->u()V

    .line 143
    return-void
.end method
