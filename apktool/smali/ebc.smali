.class public final Lebc;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 12
    iput-object p2, p0, Lebc;->a:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lebc;->e:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ldoi;

    iget-object v1, p0, Lebc;->a:Ljava/lang/String;

    iget-object v2, p0, Lebc;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ldoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lebc;->a(Leff;)V

    .line 19
    return-void
.end method
