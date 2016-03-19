.class public final Lebf;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final e:Lkju;


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;Lkju;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 17
    iput-object p2, p0, Lebf;->a:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lebf;->e:Lkju;

    .line 19
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ldoj;

    iget-object v1, p0, Lebf;->a:Ljava/lang/String;

    iget-object v2, p0, Lebf;->e:Lkju;

    invoke-direct {v0, v1, v2}, Ldoj;-><init>(Ljava/lang/String;Lkju;)V

    .line 24
    invoke-virtual {p0, v0}, Lebf;->a(Leff;)V

    .line 25
    return-void
.end method
