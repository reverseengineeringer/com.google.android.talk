.class final Ldkz;
.super Leap;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldky;


# direct methods
.method constructor <init>(Ldky;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Ldkz;->a:Ldky;

    invoke-direct {p0}, Leap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILbfd;Leau;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ldkz;->a:Ldky;

    .line 1035
    invoke-virtual {v0, p1, p3}, Ldky;->a(ILeau;)V

    .line 53
    return-void
.end method
