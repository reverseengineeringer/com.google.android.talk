.class public final Ldwd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Z

.field public final d:Lbfd;


# direct methods
.method constructor <init>(Ljava/lang/String;Lbfd;IZ)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ldwd;->a:Ljava/lang/String;

    .line 38
    iput p3, p0, Ldwd;->b:I

    .line 39
    iput-boolean p4, p0, Ldwd;->c:Z

    .line 40
    iput-object p2, p0, Ldwd;->d:Lbfd;

    .line 43
    return-void
.end method
