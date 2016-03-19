.class public final Laqu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lajb",
        "<TDataType;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lajb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajb",
            "<TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/res/Resources;

.field private final c:Lamd;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lamd;Lajb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lamd;",
            "Lajb",
            "<TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Laqu;->b:Landroid/content/res/Resources;

    .line 2023
    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Lamd;

    iput-object v0, p0, Laqu;->c:Lamd;

    .line 3023
    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Lajb;

    iput-object v0, p0, Laqu;->a:Lajb;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILaja;)Lalr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;II",
            "Laja;",
            ")",
            "Lalr",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Laqu;->a:Lajb;

    invoke-interface {v0, p1, p2, p3, p4}, Lajb;->a(Ljava/lang/Object;IILaja;)Lalr;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Laqu;->b:Landroid/content/res/Resources;

    iget-object v2, p0, Laqu;->c:Lamd;

    invoke-interface {v0}, Lalr;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v0}, Laru;->a(Landroid/content/res/Resources;Lamd;Landroid/graphics/Bitmap;)Laru;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Laja;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;",
            "Laja;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Laqu;->a:Lajb;

    invoke-interface {v0, p1, p2}, Lajb;->a(Ljava/lang/Object;Laja;)Z

    move-result v0

    return v0
.end method
